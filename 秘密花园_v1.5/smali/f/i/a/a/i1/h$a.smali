.class public final Lf/i/a/a/i1/h$a;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lf/i/a/a/i1/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/i1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/b0;)Lf/i/a/a/i1/f;
    .locals 2

    .line 1
    iget-object v0, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "application/ttml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "application/cea-708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v1, "application/cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "application/x-mp4-cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "text/x-ssa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "application/pgs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v1, "application/dvbsubs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    new-instance p1, Lf/i/a/a/i1/o/a;

    invoke-direct {p1}, Lf/i/a/a/i1/o/a;-><init>()V

    return-object p1

    .line 4
    :pswitch_1
    new-instance v0, Lf/i/a/a/i1/n/a;

    iget-object p1, p1, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-direct {v0, p1}, Lf/i/a/a/i1/n/a;-><init>(Ljava/util/List;)V

    return-object v0

    .line 5
    :pswitch_2
    new-instance v0, Lf/i/a/a/i1/m/c;

    iget p1, p1, Lf/i/a/a/b0;->B:I

    invoke-direct {v0, p1}, Lf/i/a/a/i1/m/c;-><init>(I)V

    return-object v0

    .line 6
    :pswitch_3
    new-instance v0, Lf/i/a/a/i1/m/a;

    iget-object v1, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    iget p1, p1, Lf/i/a/a/b0;->B:I

    invoke-direct {v0, v1, p1}, Lf/i/a/a/i1/m/a;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 7
    :pswitch_4
    new-instance v0, Lf/i/a/a/i1/s/a;

    iget-object p1, p1, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-direct {v0, p1}, Lf/i/a/a/i1/s/a;-><init>(Ljava/util/List;)V

    return-object v0

    .line 8
    :pswitch_5
    new-instance p1, Lf/i/a/a/i1/q/a;

    invoke-direct {p1}, Lf/i/a/a/i1/q/a;-><init>()V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lf/i/a/a/i1/r/a;

    invoke-direct {p1}, Lf/i/a/a/i1/r/a;-><init>()V

    return-object p1

    .line 10
    :pswitch_7
    new-instance p1, Lf/i/a/a/i1/t/b;

    invoke-direct {p1}, Lf/i/a/a/i1/t/b;-><init>()V

    return-object p1

    .line 11
    :pswitch_8
    new-instance v0, Lf/i/a/a/i1/p/a;

    iget-object p1, p1, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-direct {v0, p1}, Lf/i/a/a/i1/p/a;-><init>(Ljava/util/List;)V

    return-object v0

    .line 12
    :pswitch_9
    new-instance p1, Lf/i/a/a/i1/t/g;

    invoke-direct {p1}, Lf/i/a/a/i1/t/g;-><init>()V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_a
        -0x4a6813e3 -> :sswitch_9
        -0x3d28a9ba -> :sswitch_8
        -0x3be2f26c -> :sswitch_7
        0x2935f49f -> :sswitch_6
        0x310bebca -> :sswitch_5
        0x37713300 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
