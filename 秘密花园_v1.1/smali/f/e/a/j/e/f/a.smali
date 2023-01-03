.class public interface abstract Lf/e/a/j/e/f/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract c()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cm/bean/HotSearch;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/videoSearchHot"
    .end annotation
.end method

.method public abstract d(II)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "artistId"
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
            "Lcom/comeback/data/ui/cm/bean/ArtistDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/artistDetail"
    .end annotation
.end method

.method public abstract e()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cm/bean/HomeBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/videoindex"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "uuid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/cm/bean/PlayBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/videoplay/{id}"
    .end annotation
.end method

.method public abstract g()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cm/bean/ArtistList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/videoartist"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;I)Lm/e;
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
            "Lcom/comeback/data/ui/cm/bean/RankVideo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/rank"
    .end annotation
.end method

.method public abstract i(ILjava/lang/String;I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "orderby"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cm/bean/ScreenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/videosort/{id}"
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "serach"
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
            "Lcom/comeback/data/ui/cm/bean/ScreenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/videosort/0"
    .end annotation
.end method
