.class public abstract Lf/d/a/o/p/c/m;
.super Ljava/lang/Object;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/p/c/m$e;,
        Lf/d/a/o/p/c/m$a;,
        Lf/d/a/o/p/c/m$d;,
        Lf/d/a/o/p/c/m$b;,
        Lf/d/a/o/p/c/m$c;
    }
.end annotation


# static fields
.field public static final a:Lf/d/a/o/p/c/m;

.field public static final b:Lf/d/a/o/p/c/m;

.field public static final c:Lf/d/a/o/p/c/m;

.field public static final d:Lf/d/a/o/p/c/m;

.field public static final e:Lf/d/a/o/p/c/m;

.field public static final f:Lf/d/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/g<",
            "Lf/d/a/o/p/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/d/a/o/p/c/m$c;

    invoke-direct {v0}, Lf/d/a/o/p/c/m$c;-><init>()V

    sput-object v0, Lf/d/a/o/p/c/m;->a:Lf/d/a/o/p/c/m;

    .line 2
    new-instance v0, Lf/d/a/o/p/c/m$a;

    invoke-direct {v0}, Lf/d/a/o/p/c/m$a;-><init>()V

    sput-object v0, Lf/d/a/o/p/c/m;->b:Lf/d/a/o/p/c/m;

    .line 3
    new-instance v0, Lf/d/a/o/p/c/m$b;

    invoke-direct {v0}, Lf/d/a/o/p/c/m$b;-><init>()V

    sput-object v0, Lf/d/a/o/p/c/m;->c:Lf/d/a/o/p/c/m;

    .line 4
    new-instance v0, Lf/d/a/o/p/c/m$d;

    invoke-direct {v0}, Lf/d/a/o/p/c/m$d;-><init>()V

    sput-object v0, Lf/d/a/o/p/c/m;->d:Lf/d/a/o/p/c/m;

    .line 5
    sget-object v0, Lf/d/a/o/p/c/m;->c:Lf/d/a/o/p/c/m;

    sput-object v0, Lf/d/a/o/p/c/m;->e:Lf/d/a/o/p/c/m;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 6
    invoke-static {v1, v0}, Lf/d/a/o/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/d/a/o/g;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/m;->f:Lf/d/a/o/g;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lf/d/a/o/p/c/m;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Lf/d/a/o/p/c/m$e;
.end method

.method public abstract b(IIII)F
.end method
