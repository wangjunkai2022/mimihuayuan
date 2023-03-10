.class public interface abstract Lf/e/a/j/c/g/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract b(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "comic_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ba/bean/ComicDetailBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/comic/contents_list_ajax"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/ba/bean/ComicListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/page/{type}"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "data"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ba/bean/ComicListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/page/realtime"
    .end annotation
.end method

.method public abstract e()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/ba/bean/BannerBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v1/operate/recommend"
    .end annotation
.end method

.method public abstract f(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/c;
            value = "episode_idx"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/ba/bean/ReadBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/v1/comic/episode_frame"
    .end annotation
.end method

.method public abstract g(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/i;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/ba/bean/HostBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://api.hijcba.xyz/act/xjmh/domains"
    .end annotation
.end method
