# 由 platform/langpack 渲染（impl/01 §4.1）。研发自带 Dockerfile 时不会用到这份模板。
#
# distroless/static：Go 静态编译（CGO_ENABLED=0）不需要 libc，也不需要 shell 与包管理器
# ——镜像里没有 shell，一次 RCE 就少了最方便的那一步。
FROM gcr.io/distroless/static-debian12:nonroot
COPY --chown=nonroot:nonroot out/app /app/bin/app
USER nonroot
EXPOSE 8080
ENTRYPOINT ["/app/bin/app"]
