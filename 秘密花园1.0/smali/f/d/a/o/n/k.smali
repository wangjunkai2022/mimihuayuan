.class public abstract Lf/d/a/o/n/k;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final a:Lf/d/a/o/n/k;

.field public static final b:Lf/d/a/o/n/k;

.field public static final c:Lf/d/a/o/n/k;

.field public static final d:Lf/d/a/o/n/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/n/k$a;

    invoke-direct {v0}, Lf/d/a/o/n/k$a;-><init>()V

    sput-object v0, Lf/d/a/o/n/k;->a:Lf/d/a/o/n/k;

    .line 2
    new-instance v0, Lf/d/a/o/n/k$b;

    invoke-direct {v0}, Lf/d/a/o/n/k$b;-><init>()V

    sput-object v0, Lf/d/a/o/n/k;->b:Lf/d/a/o/n/k;

    .line 3
    new-instance v0, Lf/d/a/o/n/k$c;

    invoke-direct {v0}, Lf/d/a/o/n/k$c;-><init>()V

    sput-object v0, Lf/d/a/o/n/k;->c:Lf/d/a/o/n/k;

    .line 4
    new-instance v0, Lf/d/a/o/n/k$d;

    invoke-direct {v0}, Lf/d/a/o/n/k$d;-><init>()V

    sput-object v0, Lf/d/a/o/n/k;->d:Lf/d/a/o/n/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lf/d/a/o/a;)Z
.end method

.method public abstract d(ZLf/d/a/o/a;Lf/d/a/o/c;)Z
.end method
