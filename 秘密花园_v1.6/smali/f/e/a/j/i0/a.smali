.class public interface abstract Lf/e/a/j/i0/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/hgl/bean/RoomList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "http://api.vipmisss.com:81/xcdsw/{name}"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ll/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/v;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Cookie"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "user-agent"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Ll/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/v;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;I)Ll/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/v;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/i;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
    .end annotation
.end method

.method public abstract e()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/hgl/bean/ChannelList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "http://api.maiyoux.com:81/mf/json.txt"
    .end annotation
.end method

.method public abstract f()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/hgl/bean/ListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "http://l.lzpeng.com/api/public/?service=Home.getHot"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/hgl/bean/RoomList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "http://api.maiyoux.com:81/mf/{name}"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/live/bean/LiveChannel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "http://xiuxiuba.vip:82/mobile/live/index"
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/live/bean/LiveRoomList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "http://xiuxiuba.vip:82/mobile/live/anchors"
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;Ljava/lang/String;)Ll/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/v;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Cookie"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
    .end annotation
.end method

.method public abstract k()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/hgl/bean/ChannelList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "http://api.vipmisss.com:81/xcdsw/json.txt"
    .end annotation
.end method
