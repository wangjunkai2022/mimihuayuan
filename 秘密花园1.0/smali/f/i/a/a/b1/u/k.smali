.class public final Lf/i/a/a/b1/u/k;
.super Ljava/lang/Object;
.source "TrackEncryptionBox.java"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lf/i/a/a/b1/p$a;

.field public final d:I

.field public final e:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    .line 2
    invoke-static {v2}, Lc/a/a/b/g/h;->m(Z)V

    .line 3
    iput-boolean p1, p0, Lf/i/a/a/b1/u/k;->a:Z

    .line 4
    iput-object p2, p0, Lf/i/a/a/b1/u/k;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lf/i/a/a/b1/u/k;->d:I

    .line 6
    iput-object p7, p0, Lf/i/a/a/b1/u/k;->e:[B

    .line 7
    new-instance p1, Lf/i/a/a/b1/p$a;

    const/4 p3, 0x2

    if-nez p2, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p7

    const/4 v2, 0x3

    sparse-switch p7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p7, "cens"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_1
    const-string p7, "cenc"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :sswitch_2
    const-string p7, "cbcs"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_3
    const-string p7, "cbc1"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, -0x1

    :goto_3
    if-eq v0, p3, :cond_4

    if-eq v0, v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x2

    .line 9
    :goto_4
    invoke-direct {p1, v1, p4, p5, p6}, Lf/i/a/a/b1/p$a;-><init>(I[BII)V

    iput-object p1, p0, Lf/i/a/a/b1/u/k;->c:Lf/i/a/a/b1/p$a;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2e7ccd -> :sswitch_3
        0x2e7d0f -> :sswitch_2
        0x2e8997 -> :sswitch_1
        0x2e89a7 -> :sswitch_0
    .end sparse-switch
.end method
