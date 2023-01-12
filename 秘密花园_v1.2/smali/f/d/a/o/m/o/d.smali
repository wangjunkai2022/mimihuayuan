.class public Lf/d/a/o/m/o/d;
.super Ljava/lang/Object;
.source "ThumbnailStreamOpener.java"


# static fields
.field public static final f:Lf/d/a/o/m/o/a;


# instance fields
.field public final a:Lf/d/a/o/m/o/a;

.field public final b:Lf/d/a/o/m/o/c;

.field public final c:Lf/d/a/o/n/b0/b;

.field public final d:Landroid/content/ContentResolver;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/m/o/a;

    invoke-direct {v0}, Lf/d/a/o/m/o/a;-><init>()V

    sput-object v0, Lf/d/a/o/m/o/d;->f:Lf/d/a/o/m/o/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lf/d/a/o/m/o/c;Lf/d/a/o/n/b0/b;Landroid/content/ContentResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lf/d/a/o/m/o/c;",
            "Lf/d/a/o/n/b0/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/m/o/d;->f:Lf/d/a/o/m/o/a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lf/d/a/o/m/o/d;->a:Lf/d/a/o/m/o/a;

    .line 4
    iput-object p2, p0, Lf/d/a/o/m/o/d;->b:Lf/d/a/o/m/o/c;

    .line 5
    iput-object p3, p0, Lf/d/a/o/m/o/d;->c:Lf/d/a/o/n/b0/b;

    .line 6
    iput-object p4, p0, Lf/d/a/o/m/o/d;->d:Landroid/content/ContentResolver;

    .line 7
    iput-object p1, p0, Lf/d/a/o/m/o/d;->e:Ljava/util/List;

    return-void
.end method
