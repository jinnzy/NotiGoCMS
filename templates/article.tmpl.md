---
title: "{{.Article.Title}}"
date: {{.Article.PublishedOn.Format "2006-01-02T15:04:05-0700"}}
{{if .Article.HeaderImageURL}}
featured_image: "{{.Article.HeaderImageURL}}"
{{end}}
draft: false
toc: true
tags: {{ .Article.Tags }}
categories: {{ .Article.Categories}}
---

{{.Article.HTMLBody}}
