.class public final Li/m0/c/d;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# instance fields
.field public final a:Li/e0;

.field public final b:Li/h0;


# direct methods
.method public constructor <init>(Li/e0;Li/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/c/d;->a:Li/e0;

    iput-object p2, p0, Li/m0/c/d;->b:Li/h0;

    return-void
.end method

.method public static final a(Li/h0;Li/e0;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 1
    iget v1, p0, Li/h0;->e:I

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f5

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_1

    const/16 v2, 0x133

    if-eq v1, v2, :cond_0

    const/16 v2, 0x134

    if-eq v1, v2, :cond_1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_1

    const/16 v2, 0x195

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    return v3

    :cond_0
    :pswitch_0
    const/4 v1, 0x2

    const-string v2, "Expires"

    .line 2
    invoke-static {p0, v2, v0, v1}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Li/h0;->d()Li/e;

    move-result-object v0

    .line 3
    iget v0, v0, Li/e;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Li/h0;->d()Li/e;

    move-result-object v0

    .line 5
    iget-boolean v0, v0, Li/e;->f:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Li/h0;->d()Li/e;

    move-result-object v0

    .line 7
    iget-boolean v0, v0, Li/e;->e:Z

    if-nez v0, :cond_1

    return v3

    .line 8
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Li/h0;->d()Li/e;

    move-result-object p0

    .line 9
    iget-boolean p0, p0, Li/e;->b:Z

    if-nez p0, :cond_2

    .line 10
    invoke-virtual {p1}, Li/e0;->a()Li/e;

    move-result-object p0

    .line 11
    iget-boolean p0, p0, Li/e;->b:Z

    if-nez p0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    :cond_3
    const-string p0, "request"

    .line 12
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "response"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
