.class public final Li/c0$a;
.super Ljava/lang/Object;
.source "Protocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lh/o/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li/c0;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Li/c0;->g:Li/c0;

    sget-object v1, Li/c0;->d:Li/c0;

    sget-object v2, Li/c0;->e:Li/c0;

    sget-object v3, Li/c0;->f:Li/c0;

    sget-object v4, Li/c0;->c:Li/c0;

    sget-object v5, Li/c0;->b:Li/c0;

    if-eqz p1, :cond_6

    .line 1
    iget-object v6, v5, Li/c0;->a:Ljava/lang/String;

    .line 2
    invoke-static {p1, v6}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    goto :goto_0

    .line 3
    :cond_0
    iget-object v5, v4, Li/c0;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1, v5}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 5
    :cond_1
    iget-object v4, v3, Li/c0;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1, v4}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    goto :goto_0

    .line 7
    :cond_2
    iget-object v3, v2, Li/c0;->a:Ljava/lang/String;

    .line 8
    invoke-static {p1, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 9
    :cond_3
    iget-object v2, v1, Li/c0;->a:Ljava/lang/String;

    .line 10
    invoke-static {p1, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 11
    :cond_4
    iget-object v1, v0, Li/c0;->a:Ljava/lang/String;

    .line 12
    invoke-static {p1, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    return-object v0

    .line 13
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected protocol: "

    invoke-static {v1, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "protocol"

    .line 14
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
