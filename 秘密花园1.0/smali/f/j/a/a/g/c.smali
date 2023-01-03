.class public Lf/j/a/a/g/c;
.super Ljava/lang/Object;
.source "SpinnerStyle.java"


# static fields
.field public static final d:Lf/j/a/a/g/c;

.field public static final e:Lf/j/a/a/g/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Lf/j/a/a/g/c;

.field public static final g:Lf/j/a/a/g/c;

.field public static final h:Lf/j/a/a/g/c;

.field public static final i:[Lf/j/a/a/g/c;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lf/j/a/a/g/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lf/j/a/a/g/c;-><init>(IZZ)V

    sput-object v0, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    .line 2
    new-instance v0, Lf/j/a/a/g/c;

    invoke-direct {v0, v2, v2, v2}, Lf/j/a/a/g/c;-><init>(IZZ)V

    sput-object v0, Lf/j/a/a/g/c;->e:Lf/j/a/a/g/c;

    .line 3
    new-instance v0, Lf/j/a/a/g/c;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v1}, Lf/j/a/a/g/c;-><init>(IZZ)V

    sput-object v0, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    .line 4
    new-instance v0, Lf/j/a/a/g/c;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v2, v1}, Lf/j/a/a/g/c;-><init>(IZZ)V

    sput-object v0, Lf/j/a/a/g/c;->g:Lf/j/a/a/g/c;

    .line 5
    new-instance v0, Lf/j/a/a/g/c;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v2, v1}, Lf/j/a/a/g/c;-><init>(IZZ)V

    sput-object v0, Lf/j/a/a/g/c;->h:Lf/j/a/a/g/c;

    const/4 v6, 0x5

    new-array v6, v6, [Lf/j/a/a/g/c;

    .line 6
    sget-object v7, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    aput-object v7, v6, v1

    sget-object v1, Lf/j/a/a/g/c;->e:Lf/j/a/a/g/c;

    aput-object v1, v6, v2

    sget-object v1, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    aput-object v1, v6, v3

    sget-object v1, Lf/j/a/a/g/c;->g:Lf/j/a/a/g/c;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lf/j/a/a/g/c;->i:[Lf/j/a/a/g/c;

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/j/a/a/g/c;->a:I

    .line 3
    iput-boolean p2, p0, Lf/j/a/a/g/c;->b:Z

    .line 4
    iput-boolean p3, p0, Lf/j/a/a/g/c;->c:Z

    return-void
.end method
