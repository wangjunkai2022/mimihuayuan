.class public interface abstract Lf/e/a/j/v/h/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(ILjava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "source"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/index/search"
    .end annotation
.end method

.method public abstract b(ILjava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "city"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/jhlf/bean/MMList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/index/list"
    .end annotation
.end method

.method public abstract c()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/index/getWebsite"
    .end annotation
.end method

.method public abstract d(ILjava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/index/search"
    .end annotation
.end method
