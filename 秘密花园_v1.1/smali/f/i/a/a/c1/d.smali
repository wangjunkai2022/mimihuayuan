.class public final Lf/i/a/a/c1/d;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/c1/d$g;,
        Lf/i/a/a/c1/d$h;,
        Lf/i/a/a/c1/d$b;,
        Lf/i/a/a/c1/d$e;,
        Lf/i/a/a/c1/d$f;,
        Lf/i/a/a/c1/d$d;,
        Lf/i/a/a/c1/d$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lf/i/a/a/c1/d$b;",
            "Ljava/util/List<",
            "Lf/i/a/a/c1/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Landroid/util/SparseIntArray;

.field public static final d:Landroid/util/SparseIntArray;

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Landroid/util/SparseIntArray;

.field public static i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const-string v0, "^\\D?(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/c1/d;->a:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf/i/a/a/c1/d;->b:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 3
    sput v0, Lf/i/a/a/c1/d;->i:I

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lf/i/a/a/c1/d;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lf/i/a/a/c1/d;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/4 v4, 0x2

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 9
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    sget-object v0, Lf/i/a/a/c1/d;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    const/4 v6, 0x4

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 12
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lf/i/a/a/c1/d;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const/16 v8, 0x8

    .line 14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 15
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lf/i/a/a/c1/d;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v10, 0x10

    .line 17
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 18
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lf/i/a/a/c1/d;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    const/16 v12, 0x20

    .line 20
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 21
    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lf/i/a/a/c1/d;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    const/16 v14, 0x40

    .line 23
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 24
    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v8, 0x15

    invoke-virtual {v0, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v8, 0x16

    const/16 v10, 0x80

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 34
    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v8, 0x1e

    const/16 v10, 0x100

    .line 36
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v8, 0x1f

    const/16 v10, 0x200

    .line 39
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 40
    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v8, 0x400

    invoke-virtual {v0, v12, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v10, 0x28

    const/16 v12, 0x800

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v10, 0x29

    const/16 v4, 0x1000

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v10, 0x2a

    const/16 v2, 0x2000

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v10, 0x32

    const/16 v2, 0x4000

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v10, 0x33

    const v12, 0x8000

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    const/16 v10, 0x34

    const/high16 v12, 0x10000

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v10, "L30"

    .line 49
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v10, "L60"

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v10, "L63"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v10, "L90"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v10, "L93"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "L120"

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "L123"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L150"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L153"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L156"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L180"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L183"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "L186"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v2, "H30"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v2, "H60"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v2, "H63"

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v2, "H90"

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const-string v2, "H93"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "H120"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "H123"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "H150"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "H153"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "H156"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "H180"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "H183"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    const/high16 v2, 0x2000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "H186"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v2, "00"

    .line 76
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v2, "01"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v4, "02"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v8, "03"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v10, "04"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v10, "05"

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v10, "06"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v10, "07"

    invoke-interface {v0, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v10, "08"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    const-string v10, "09"

    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    .line 87
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    const-string v2, "04"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    const-string v2, "05"

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    const-string v2, "06"

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    const-string v2, "07"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    const-string v2, "08"

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    const-string v2, "09"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v0, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lf/i/a/a/c1/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lf/i/a/a/c1/d$h;

    invoke-direct {p0, v0}, Lf/i/a/a/c1/d$h;-><init>(Lf/i/a/a/c1/d$a;)V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 3
    :cond_0
    sget p0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x15

    if-ge p0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    const/4 p0, 0x0

    .line 4
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/i/a/a/c1/a;

    iget-object p0, p0, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    const-string v1, "OMX.SEC.mp3.dec"

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OMX.SEC.MP3.Decoder"

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OMX.brcm.audio.mp3.decoder"

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    :cond_1
    new-instance p0, Lf/i/a/a/c1/d$g;

    invoke-direct {p0, v0}, Lf/i/a/a/c1/d$g;-><init>(Lf/i/a/a/c1/d$a;)V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    if-nez p2, :cond_0

    const-string p2, ".secure"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget p2, Lf/i/a/a/m1/h0;->a:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_1

    const-string p2, "CIPAACDecoder"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "CIPMP3Decoder"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "CIPVorbisDecoder"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "CIPAMRNBDecoder"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "AACDecoder"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "MP3Decoder"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    sget p2, Lf/i/a/a/m1/h0;->a:I

    const/16 v0, 0x12

    if-ge p2, v0, :cond_2

    const-string p2, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "a70"

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    const-string v0, "Xiaomi"

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "HM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_0

    .line 13
    :cond_2
    sget p2, Lf/i/a/a/m1/h0;->a:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_3

    const-string p2, "OMX.qcom.audio.decoder.mp3"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "dlxu"

    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "protou"

    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "ville"

    .line 17
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "villeplus"

    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "villec2"

    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "gee"

    .line 20
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "C6602"

    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "C6603"

    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "C6606"

    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "C6616"

    .line 24
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "L36h"

    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "SO-02E"

    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_0

    .line 27
    :cond_3
    sget p2, Lf/i/a/a/m1/h0;->a:I

    if-ne p2, v0, :cond_4

    const-string p2, "OMX.qcom.audio.decoder.aac"

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "C1504"

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "C1505"

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "C1604"

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "C1605"

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_0

    .line 33
    :cond_4
    sget p2, Lf/i/a/a/m1/h0;->a:I

    const/16 v0, 0x18

    const-string v2, "samsung"

    if-ge p2, v0, :cond_6

    const-string p2, "OMX.SEC.aac.dec"

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    sget-object p2, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "zeroflte"

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "zerolte"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "zenlte"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "SC-05G"

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "marinelteatt"

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "404SC"

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "SC-04G"

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v0, "SCV31"

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto/16 :goto_0

    .line 44
    :cond_6
    sget p2, Lf/i/a/a/m1/h0;->a:I

    const-string v0, "jflte"

    const/16 v3, 0x13

    if-gt p2, v3, :cond_7

    const-string p2, "OMX.SEC.vp8.dec"

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "d2"

    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "serrano"

    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "santos"

    .line 50
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "t0"

    .line 51
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    .line 52
    :cond_7
    sget p2, Lf/i/a/a/m1/h0;->a:I

    if-gt p2, v3, :cond_8

    sget-object p2, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "OMX.qcom.video.decoder.vp8"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    const-string p2, "audio/eac3-joc"

    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 p2, 0x1

    goto :goto_1

    :cond_a
    :goto_0
    const/4 p2, 0x0

    :goto_1
    const/4 v0, 0x0

    if-nez p2, :cond_b

    return-object v0

    .line 56
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 57
    array-length p2, p0

    :goto_2
    if-ge v1, p2, :cond_d

    aget-object v2, p0, v1

    .line 58
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v2

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const-string p0, "video/dolby-vision"

    .line 59
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "video/hevcdv"

    return-object p0

    :cond_e
    const-string p0, "OMX.RTK.video.decoder"

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_f
    const-string p0, "video/dv_hevc"

    return-object p0

    :cond_10
    const-string p0, "audio/alac"

    .line 63
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_11
    const-string p0, "audio/flac"

    .line 64
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_12
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\."

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "mp4a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "hvc1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "hev1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "dvhe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "dvh1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v3, "avc2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    const-string v3, "avc1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x10

    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 3
    :pswitch_0
    array-length v2, p0

    if-eq v2, v7, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    :try_start_0
    aget-object v2, p0, v8

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 5
    invoke-static {v2}, Lf/i/a/a/m1/r;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/mp4a-latm"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    aget-object p0, p0, v9

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 8
    sget-object v2, Lf/i/a/a/c1/d;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v6, :cond_3

    .line 9
    new-instance v2, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    :cond_3
    :goto_2
    return-object v0

    .line 10
    :pswitch_1
    array-length v1, p0

    if-ge v1, v7, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    sget-object v1, Lf/i/a/a/c1/d;->a:Ljava/util/regex/Pattern;

    aget-object v2, p0, v8

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    sget-object v2, Lf/i/a/a/c1/d;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    aget-object p0, p0, v9

    .line 16
    sget-object v2, Lf/i/a/a/c1/d;->g:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_7

    goto :goto_3

    .line 17
    :cond_7
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-object v0

    .line 18
    :pswitch_2
    array-length v1, p0

    if-ge v1, v5, :cond_8

    goto :goto_5

    .line 19
    :cond_8
    sget-object v1, Lf/i/a/a/c1/d;->a:Ljava/util/regex/Pattern;

    aget-object v2, p0, v8

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    .line 21
    :cond_9
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    const-string v2, "2"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v8, 0x2

    .line 24
    :goto_4
    aget-object p0, p0, v7

    .line 25
    sget-object v1, Lf/i/a/a/c1/d;->e:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_b

    goto :goto_5

    .line 26
    :cond_b
    new-instance v0, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_5
    return-object v0

    .line 27
    :pswitch_3
    array-length v2, p0

    if-ge v2, v9, :cond_d

    goto :goto_7

    .line 28
    :cond_d
    :try_start_1
    aget-object v2, p0, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_e

    .line 29
    aget-object v2, p0, v8

    invoke-virtual {v2, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    aget-object p0, p0, v8

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_6

    .line 31
    :cond_e
    array-length v1, p0

    if-lt v1, v7, :cond_11

    .line 32
    aget-object v1, p0, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 33
    aget-object p0, p0, v9

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :goto_6
    sget-object v2, Lf/i/a/a/c1/d;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v6, :cond_f

    goto :goto_7

    .line 35
    :cond_f
    sget-object v2, Lf/i/a/a/c1/d;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v6, :cond_10

    goto :goto_7

    .line 36
    :cond_10
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :catch_1
    :cond_11
    :goto_7
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2ddf23 -> :sswitch_6
        0x2ddf24 -> :sswitch_5
        0x2f3cdb -> :sswitch_4
        0x2f3d0f -> :sswitch_3
        0x30d038 -> :sswitch_2
        0x310dbc -> :sswitch_1
        0x333790 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;ZZ)Lf/i/a/a/c1/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lf/i/a/a/c1/d;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/i/a/a/c1/a;

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lf/i/a/a/c1/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation

    const-class v0, Lf/i/a/a/c1/d;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lf/i/a/a/c1/d$b;

    invoke-direct {v1, p0, p1, p2}, Lf/i/a/a/c1/d$b;-><init>(Ljava/lang/String;ZZ)V

    .line 2
    sget-object v2, Lf/i/a/a/c1/d;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_0
    :try_start_1
    sget v2, Lf/i/a/a/m1/h0;->a:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    new-instance v2, Lf/i/a/a/c1/d$f;

    invoke-direct {v2, p1, p2}, Lf/i/a/a/c1/d$f;-><init>(ZZ)V

    goto :goto_0

    :cond_1
    new-instance v2, Lf/i/a/a/c1/d$e;

    invoke-direct {v2, v3}, Lf/i/a/a/c1/d$e;-><init>(Lf/i/a/a/c1/d$a;)V

    .line 5
    :goto_0
    invoke-static {v1, v2}, Lf/i/a/a/c1/d;->f(Lf/i/a/a/c1/d$b;Lf/i/a/a/c1/d$d;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lf/i/a/a/m1/h0;->a:I

    if-gt v4, p1, :cond_2

    sget p1, Lf/i/a/a/m1/h0;->a:I

    const/16 v2, 0x17

    if-gt p1, v2, :cond_2

    .line 7
    new-instance p1, Lf/i/a/a/c1/d$e;

    invoke-direct {p1, v3}, Lf/i/a/a/c1/d$e;-><init>(Lf/i/a/a/c1/d$a;)V

    .line 8
    invoke-static {v1, p1}, Lf/i/a/a/c1/d;->f(Lf/i/a/a/c1/d$b;Lf/i/a/a/c1/d$d;)Ljava/util/ArrayList;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/c1/a;

    iget-object p1, p1, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    .line 11
    :cond_2
    invoke-static {p0, p2}, Lf/i/a/a/c1/d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 12
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 13
    sget-object p1, Lf/i/a/a/c1/d;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f(Lf/i/a/a/c1/d$b;Lf/i/a/a/c1/d$d;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/c1/d$b;",
            "Lf/i/a/a/c1/d$d;",
            ")",
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/c1/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation

    const-string v0, "secure-playback"

    const-string v1, "tunneled-playback"

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v9, p0, Lf/i/a/a/c1/d$b;->a:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lf/i/a/a/c1/d$d;->c()I

    move-result v10

    .line 4
    invoke-interface {p1}, Lf/i/a/a/c1/d$d;->e()Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_d

    .line 5
    invoke-interface {p1, v13}, Lf/i/a/a/c1/d$d;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v3, v4, v11, v9}, Lf/i/a/a/c1/d;->b(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    .line 9
    invoke-interface {p1, v1, v5, v6}, Lf/i/a/a/c1/d$d;->d(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v3

    .line 10
    invoke-interface {p1, v1, v5, v6}, Lf/i/a/a/c1/d$d;->b(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 11
    iget-boolean v8, p0, Lf/i/a/a/c1/d$b;->c:Z

    if-nez v8, :cond_1

    if-nez v7, :cond_b

    :cond_1
    iget-boolean v7, p0, Lf/i/a/a/c1/d$b;->c:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 12
    :cond_2
    invoke-interface {p1, v0, v5, v6}, Lf/i/a/a/c1/d$d;->d(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v3

    .line 13
    invoke-interface {p1, v0, v5, v6}, Lf/i/a/a/c1/d$d;->b(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 14
    iget-boolean v8, p0, Lf/i/a/a/c1/d$b;->b:Z

    if-nez v8, :cond_3

    if-nez v7, :cond_b

    :cond_3
    iget-boolean v7, p0, Lf/i/a/a/c1/d$b;->b:Z

    if-eqz v7, :cond_4

    if-nez v3, :cond_4

    goto/16 :goto_2

    .line 15
    :cond_4
    sget v7, Lf/i/a/a/m1/h0;->a:I

    const/16 v8, 0x16

    if-gt v7, v8, :cond_7

    sget-object v7, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v8, "ODROID-XU3"

    .line 16
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v8, "Nexus 10"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const-string v7, "OMX.Exynos.AVC.Decoder"

    .line 17
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_1
    if-eqz v11, :cond_8

    .line 18
    iget-boolean v8, p0, Lf/i/a/a/c1/d$b;->b:Z

    if-eq v8, v3, :cond_9

    :cond_8
    if-nez v11, :cond_a

    iget-boolean v8, p0, Lf/i/a/a/c1/d$b;->b:Z

    if-nez v8, :cond_a

    :cond_9
    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, v9

    .line 19
    invoke-static/range {v3 .. v8}, Lf/i/a/a/c1/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lf/i/a/a/c1/a;

    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    if-nez v11, :cond_b

    if-eqz v3, :cond_b

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".secure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    move-object v4, v9

    .line 22
    invoke-static/range {v3 .. v8}, Lf/i/a/a/c1/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lf/i/a/a/c1/a;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    .line 24
    :try_start_2
    sget v4, Lf/i/a/a/m1/h0;->a:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 25
    :cond_c
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    return-object v2

    :catch_1
    move-exception p0

    .line 26
    new-instance p1, Lf/i/a/a/c1/d$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lf/i/a/a/c1/d$c;-><init>(Ljava/lang/Throwable;Lf/i/a/a/c1/d$a;)V

    throw p1
.end method

.method public static g()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation

    .line 1
    sget v0, Lf/i/a/a/c1/d;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const-string v0, "video/avc"

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2, v2}, Lf/i/a/a/c1/d;->d(Ljava/lang/String;ZZ)Lf/i/a/a/c1/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, v0, Lf/i/a/a/c1/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v2, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 4
    :cond_1
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 5
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    sparse-switch v5, :sswitch_data_0

    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const/high16 v5, 0x900000

    goto :goto_1

    :sswitch_1
    const v5, 0x564000

    goto :goto_1

    :sswitch_2
    const/high16 v5, 0x220000

    goto :goto_1

    :sswitch_3
    const/high16 v5, 0x200000

    goto :goto_1

    :sswitch_4
    const/high16 v5, 0x140000

    goto :goto_1

    :sswitch_5
    const v5, 0xe1000

    goto :goto_1

    :sswitch_6
    const v5, 0x65400

    goto :goto_1

    :sswitch_7
    const v5, 0x31800

    goto :goto_1

    :sswitch_8
    const v5, 0x18c00

    goto :goto_1

    :cond_2
    const/16 v5, 0x6300

    :goto_1
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_3
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    const v0, 0x54600

    goto :goto_2

    :cond_4
    const v0, 0x2a300

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7
    :cond_5
    sput v2, Lf/i/a/a/c1/d;->i:I

    .line 8
    :cond_6
    sget v0, Lf/i/a/a/c1/d;->i:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_8
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
        0x400 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method
