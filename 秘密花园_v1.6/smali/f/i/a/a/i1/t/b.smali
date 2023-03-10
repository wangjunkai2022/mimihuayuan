.class public final Lf/i/a/a/i1/t/b;
.super Lf/i/a/a/i1/c;
.source "Mp4WebvttDecoder.java"


# static fields
.field public static final p:I

.field public static final q:I

.field public static final r:I


# instance fields
.field public final n:Lf/i/a/a/m1/u;

.field public final o:Lf/i/a/a/i1/t/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "payl"

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/i1/t/b;->p:I

    const-string v0, "sttg"

    .line 2
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/i1/t/b;->q:I

    const-string v0, "vttc"

    .line 3
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/i1/t/b;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Mp4WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lf/i/a/a/i1/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lf/i/a/a/m1/u;

    invoke-direct {v0}, Lf/i/a/a/m1/u;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/t/b;->n:Lf/i/a/a/m1/u;

    .line 3
    new-instance v0, Lf/i/a/a/i1/t/e$b;

    invoke-direct {v0}, Lf/i/a/a/i1/t/e$b;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/t/b;->o:Lf/i/a/a/i1/t/e$b;

    return-void
.end method


# virtual methods
.method public k([BIZ)Lf/i/a/a/i1/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lf/i/a/a/i1/t/b;->n:Lf/i/a/a/m1/u;

    .line 2
    iput-object p1, p3, Lf/i/a/a/m1/u;->a:[B

    .line 3
    iput p2, p3, Lf/i/a/a/m1/u;->c:I

    const/4 p1, 0x0

    .line 4
    iput p1, p3, Lf/i/a/a/m1/u;->b:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    iget-object p2, p0, Lf/i/a/a/i1/t/b;->n:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->a()I

    move-result p2

    if-lez p2, :cond_6

    .line 7
    iget-object p2, p0, Lf/i/a/a/i1/t/b;->n:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->a()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_5

    .line 8
    iget-object p2, p0, Lf/i/a/a/i1/t/b;->n:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->d()I

    move-result p2

    .line 9
    iget-object v0, p0, Lf/i/a/a/i1/t/b;->n:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v0

    .line 10
    sget v1, Lf/i/a/a/i1/t/b;->r:I

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lf/i/a/a/i1/t/b;->n:Lf/i/a/a/m1/u;

    iget-object v1, p0, Lf/i/a/a/i1/t/b;->o:Lf/i/a/a/i1/t/e$b;

    add-int/lit8 p2, p2, -0x8

    .line 12
    invoke-virtual {v1}, Lf/i/a/a/i1/t/e$b;->b()V

    :cond_0
    :goto_1
    if-lez p2, :cond_3

    if-lt p2, p3, :cond_2

    .line 13
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v2

    .line 14
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v3

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v2, p3

    .line 15
    iget-object v4, v0, Lf/i/a/a/m1/u;->a:[B

    .line 16
    iget v5, v0, Lf/i/a/a/m1/u;->b:I

    .line 17
    invoke-static {v4, v5, v2}, Lf/i/a/a/m1/h0;->w([BII)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v0, v2}, Lf/i/a/a/m1/u;->B(I)V

    sub-int/2addr p2, v2

    .line 19
    sget v2, Lf/i/a/a/i1/t/b;->q:I

    if-ne v3, v2, :cond_1

    .line 20
    invoke-static {v4, v1}, Lf/i/a/a/i1/t/f;->c(Ljava/lang/String;Lf/i/a/a/i1/t/e$b;)V

    goto :goto_1

    .line 21
    :cond_1
    sget v2, Lf/i/a/a/i1/t/b;->p:I

    if-ne v3, v2, :cond_0

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lf/i/a/a/i1/t/f;->d(Ljava/lang/String;Ljava/lang/String;Lf/i/a/a/i1/t/e$b;Ljava/util/List;)V

    goto :goto_1

    .line 23
    :cond_2
    new-instance p1, Lf/i/a/a/i1/g;

    const-string p2, "Incomplete vtt cue box header found."

    invoke-direct {p1, p2}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    invoke-virtual {v1}, Lf/i/a/a/i1/t/e$b;->a()Lf/i/a/a/i1/t/e;

    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_4
    iget-object p3, p0, Lf/i/a/a/i1/t/b;->n:Lf/i/a/a/m1/u;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Lf/i/a/a/m1/u;->B(I)V

    goto :goto_0

    .line 27
    :cond_5
    new-instance p1, Lf/i/a/a/i1/g;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_6
    new-instance p2, Lf/i/a/a/i1/t/c;

    invoke-direct {p2, p1}, Lf/i/a/a/i1/t/c;-><init>(Ljava/util/List;)V

    return-object p2
.end method
