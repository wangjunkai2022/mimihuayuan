.class public Lk/a/f/f;
.super Ljava/lang/Object;
.source "ParseSettings.java"


# static fields
.field public static final c:Lk/a/f/f;

.field public static final d:Lk/a/f/f;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk/a/f/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lk/a/f/f;-><init>(ZZ)V

    sput-object v0, Lk/a/f/f;->c:Lk/a/f/f;

    .line 2
    new-instance v0, Lk/a/f/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lk/a/f/f;-><init>(ZZ)V

    sput-object v0, Lk/a/f/f;->d:Lk/a/f/f;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lk/a/f/f;->a:Z

    .line 3
    iput-boolean p2, p0, Lk/a/f/f;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lk/a/e/b;)Lk/a/e/b;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lk/a/f/f;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p1, Lk/a/e/b;->a:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p1, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
