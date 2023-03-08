.class public interface abstract Lf/e/a/j/g/h/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/es/mov/search"
    .end annotation
.end method

.method public abstract b(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/cucumber/bean/ActorList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/actor/list"
    .end annotation
.end method

.method public abstract c()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/domain/list"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "order"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "pageNo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "shortvideo/listOrderBy{order}"
    .end annotation
.end method

.method public abstract e(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/actor/movie/list"
    .end annotation
.end method

.method public abstract f(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/movUser/queryMyUpMovGifList"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "inviteCode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/UserDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/user/otherUserinfo"
    .end annotation
.end method

.method public abstract h(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "movId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/es/mov/similar"
    .end annotation
.end method

.method public abstract i()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/TopStar;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/actor/list/newtop4"
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/NvshenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/wonderful/square/detail"
    .end annotation
.end method

.method public abstract k(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "moduleId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/SelectionQuery;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/selection/query2"
    .end annotation
.end method

.method public abstract l()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/defaultchannels"
    .end annotation
.end method

.method public abstract m()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/Column;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/module/list"
    .end annotation
.end method

.method public abstract n(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/ActorList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/actor/detail"
    .end annotation
.end method

.method public abstract o(Ljava/util/HashMap;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/module/movlist2"
    .end annotation
.end method

.method public abstract p(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "movId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/mov/browse2"
    .end annotation
.end method

.method public abstract q()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/shortvideo/forward"
    .end annotation
.end method

.method public abstract r(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/ranking/{key}"
    .end annotation
.end method

.method public abstract s()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/SelectionQuery;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/selection/query"
    .end annotation
.end method

.method public abstract t(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "movieId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/StarWork;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/movie/actor/list"
    .end annotation
.end method

.method public abstract u(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/cucumber/bean/ActorList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/ranking/actors"
    .end annotation
.end method

.method public abstract v(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "navId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/ColumnDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/module/nav"
    .end annotation
.end method

.method public abstract w(Ljava/util/HashMap;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/home/movlist"
    .end annotation
.end method

.method public abstract x()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/shortvideo/nvshen/certification"
    .end annotation
.end method
