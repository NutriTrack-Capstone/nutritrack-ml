# nutritrack-ml

This repository is to be dockerized and hosted with TensorFlow Serving. This repository also acts as checkpoint for the machine learning trainings as part of Nutritrack capstone project.

## API
### Request
<table>
<tr>
<th>Endpoint</th>
<td><code>POST http://localhost:8501/v1/models/nutritrack:predict</code></td>
</tr>
<tr>
<th>Header</th>
<td><code>Content-Type: application/json</code></td>
</tr>
<tr>
<th>Data</th>
<td><code>{<br/>
&nbsp;&nbsp;"signature_name": "predict_image_class",<br/>
&nbsp;&nbsp;"instances": [image],<br/>
}
</code>
where <code>image</code> is the raw image captured with the shape of <code>(x, y, channel)</code>.</td>
</table>

### Response
```
{
  "predictions":
  [
    {
      "score": [foodProbability],
      "label": [foodName],
    }
  ],
}
```
where `foodProbability` is a value 0~1 associated with the `foodName` string.

## Files and Directories
<table>
<tr>
<th><code>model-saver.ipynb</code></th>
<td>Jupyter Notebook to save the model in SavedModel format from H5 format.</td>
</tr>
<tr>
<th><code>models/</code></th>
<td>Versions of SavedModel.</td>
</tr>
<tr>
<th><code>h5-models/</code></th>
<td>Original H5 models.</td>
</tr>
<tr>
<th><code>notebook-archive/</code></th>
<td>Archive of Jupyter Notebooks used to train models.</td>
</tr>
</table>

## Docker Run
```bash
docker run -p 8501:8501 --mount type=bind,source="$(pwd)/models",target="/models/nutritrack" \
-e MODEL_NAME=nutritrack -t tensorflow/serving
```
