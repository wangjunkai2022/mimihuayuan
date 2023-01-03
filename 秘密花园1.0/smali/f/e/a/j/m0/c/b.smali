.class public Lf/e/a/j/m0/c/b;
.super Ljava/lang/Object;
.source "LiveInterceptor.java"

# interfaces
.implements Li/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Li/y$a;->S()Li/e0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Li/e0$a;

    invoke-direct {v1, v0}, Li/e0$a;-><init>(Li/e0;)V

    const-string v0, "UwcVDQgWbUoDAw=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VgwHFgQaXQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "VhITLQ8="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "VhITLw4K"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "B1NVB10XXQNeVgFUSUdXCAAETgVeQAgeRlRWUE4MUw8EVFUH"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "RAYIMg4BSlocCA=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BExVSls="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "WBE1ARkAUFwd"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DkxTSlo="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "UwcVDQgWd1IeAw=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fxcCMw4a"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "QwsOATgHWF4DNUAV"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "RQMNAAQeakcB"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    .line 11
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    const-string v6, "VgAAAA4VXlsaAV8LFQQMG1wQEBAeBU5LChx1JTsuJi1wKiojID90fTw2ZTUrPjY9YDo6PltCCwBHUwJQQFM="

    .line 13
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "UwcVDQgWcFc="

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BFAGU1JLDVVBVAMEHFlVWQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "WBIGCiIX"

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AVVbUFtHCgU="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "Qw0IAQU="

    .line 18
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "QjdUBz04dgMDD1YvO1ouWhJQJSskSl5qMBNcChInEwdGBCYuMwpBFkEgeA1NPzcIYyEWDBgXXXFBJFI+Sy8WOXFUGjElB2B6FzNsHSAJLwV8NxBcMz54diU+YBcSPDoTQBU0HCEnXl09DnUEMAVRKWEgNjcfB1h5AyVyKF1YIQZOUVsnHD0="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    const-string v0, "QhEGFiIX"

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BlJWVAlFDwZeAwIDTkdXWgUBTlwNRQ0eS18MV0hZUg0GBwUB"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 20
    invoke-virtual {v1}, Li/e0$a;->b()Li/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 21
    throw p1
.end method
