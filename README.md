# nutritrack-ml

This repository is to be dockerized and hosted with TensorFlow Serving. This repository also acts as checkpoint for the machine learning trainings as part of Nutritrack capstone project.

Each Jupyter notebook in notebook-archive is done individually by any team member, with same or different datasets. The objective of this workflow is to obtain best accuracy along with as many classes as possible, while team members can use existing code to improve the models to be built.

## API
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
&nbsp;&nbsp;"instances": image_array,<br/>
}
</code></td>
</table>

## Progress
- Used local Google Drive as data source (model-1-1, model-2-1)
- Used HuggingFace Datasets API as data source (model-3-1)
- Achieved 90.0% accuracy on 9 classes with transfer learning (model-1-1)
- Constructed confusion matrix (model-1-1)
