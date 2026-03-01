import express from "express";
import cors from "cors";
import multer from "multer";
import { exec } from "child_process";
import fs from "fs";
import path from "path";

const app = express();
app.use(cors());
app.use(express.json());

const upload = multer({ dest: "uploads/" });

app.post("/upload-ly", upload.single("file"), (req, res) => {
  const filePath = req.file.path;
  const originalName = req.file.originalname.replace(".ly", "");
  const outputDir = `scores/${originalName}`;

  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
  }

  const newLyPath = `${outputDir}/${originalName}.ly`;
  fs.renameSync(filePath, newLyPath);

  // Compile LilyPond
  exec(`lilypond -o ${outputDir}/${originalName} ${newLyPath}`, (err) => {
    if (err) {
      return res.status(500).send("LilyPond error");
    }

    // Generate YAML dari MIDI
    exec(`python scripts/generate_yaml.py ${outputDir}/${originalName}.midi`, (err2) => {
      if (err2) {
        return res.status(500).send("YAML generation error");
      }

      res.json({
        message: "Success",
        files: {
          pdf: `${originalName}.pdf`,
          midi: `${originalName}.midi`,
          svg: `${originalName}.svg`,
          yaml: `${originalName}.yaml`
        }
      });
    });
  });
});

app.listen(5000, () => {
  console.log("Backend running on http://localhost:5000");
});