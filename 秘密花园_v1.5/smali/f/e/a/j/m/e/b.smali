.class public interface abstract Lf/e/a/j/m/e/b;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gdian/bean/Play;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/apiv2/video/{id}"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gdian/bean/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/apiv2/album/{id}"
    .end annotation
.end method

.method public abstract c(ILjava/lang/String;IILjava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "is_av"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "sort"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ll/o0/r;
            value = "num"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gdian/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/apiv2/video/search"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;IILjava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "sort"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "num"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gdian/bean/NovelList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/apiv2/fiction/search"
    .end annotation
.end method

.method public abstract e(II)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "num"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gdian/bean/LiveList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/apiv2/external-liverooms"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "chapter_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gdian/bean/Novel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/Webapi_v1/Resource/chapterInfo"
    .end annotation
.end method

.method public abstract g(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gdian/bean/ChapterList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/Webapi_v1/Resource/chapterList"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;IILjava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "sort"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "num"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gdian/bean/ImageList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/apiv2/album/search"
    .end annotation
.end method
