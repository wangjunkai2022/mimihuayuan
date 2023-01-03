.class public interface abstract Lf/e/a/j/d/e/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "videoId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/VideoPlay;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/video/videoinfo"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "tag"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/video/videolist"
    .end annotation
.end method

.method public abstract c()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/HotSearch;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v1/video/getsearchkey"
    .end annotation
.end method

.method public abstract d(ILi/g0;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p2    # Li/g0;
        .annotation runtime Ll/o0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Li/g0;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/RankList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/video/list"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/RankList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/video/rank"
    .end annotation
.end method

.method public abstract f()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/ScreenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v1/video/sort"
    .end annotation
.end method

.method public abstract g()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/StarList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v1/video/artist"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "tags"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/RankList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/video/tagsearch"
    .end annotation
.end method

.method public abstract i(ILjava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "keyWords"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/RankList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/video/searchbywords"
    .end annotation
.end method

.method public abstract j()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/Tags;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v1/video/alltag"
    .end annotation
.end method

.method public abstract k(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "artistId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/bale/bean/StarDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/video/artistvideo"
    .end annotation
.end method
