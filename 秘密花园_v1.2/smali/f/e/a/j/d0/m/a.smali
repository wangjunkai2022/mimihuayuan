.class public interface abstract Lf/e/a/j/d0/m/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/video/detail"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/CartoonDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/comic/lists"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/special/video"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/VoiceDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/book/detail"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/VoiceList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/book/{type}"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/VoiceDetailList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/anchor/voice"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/Cartoon;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/comic/{type}"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/Cartoon;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/comic/popular"
    .end annotation
.end method

.method public abstract i()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/AnchorList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/anchor/index"
    .end annotation
.end method

.method public abstract j()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/HomeData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v2/video/index"
    .end annotation
.end method

.method public abstract k(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/HotWords;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/other/search_keyword"
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/ShortOriginal;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v2/original/index"
    .end annotation
.end method

.method public abstract m(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/VoiceDetailList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/anchor/special"
    .end annotation
.end method

.method public abstract n(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/video/search"
    .end annotation
.end method

.method public abstract o(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/NovelList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v2/novels/index"
    .end annotation
.end method

.method public abstract p(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/VoiceDetailList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/anchor/voice"
    .end annotation
.end method

.method public abstract q()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/SpecialList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/v2/special/more"
    .end annotation
.end method

.method public abstract r(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "params"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/maomi/bean/CartoonWatch;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/comic/watch"
    .end annotation
.end method
