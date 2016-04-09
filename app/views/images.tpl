{{template "base/base.html" .}}

{{template "base/nav.html" .}}

{{define "body"}}
  <div class="right-content-container">
    <div class="header">
      <ol class="breadcrumb">
        <li><a href="/">Home</a></li>
        <li><a href="/registries">Registries</a></li>
        <li><a href="/registries/{{.registryName}}/repositories">{{.registryName}}</a></li>
        <li><a href="/registries/{{.registryName}}/repositories/{{.repository.EncodedURI}}">{{.repositoryName}}</a></li>
        <li><a href="/registries/{{.registryName}}/repositories/{{.repository.EncodedURI}}/{{.tagName}}">{{.repositoryName}}</a></li>
        <li class="active">Images</li>
      </ol>
    </div>
    <div class="content-block white-bg">
      <div class="row">
        <h1>{{.repositoryName}}</h1>
        <hr>
      </div>
      <div class="row">
        <table class="table">
          <thead>
            <th>ID:</th>
            <th>Image:</th>
          </thead>
          <tbody>
            {{range $key, $history := .history}}
            <tr>
              <td>{{$key}}</td>
              <td>{{$history}}</td>
            </tr>
            {{end}}
          </tbody>
        </table>
      </div>
    </div>
  </div>

{{end}}
