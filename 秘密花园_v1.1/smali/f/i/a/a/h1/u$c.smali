.class public final Lf/i/a/a/h1/u$c;
.super Lf/i/a/a/h1/z;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/i/a/a/h1/z;-><init>(Lf/i/a/a/u0;)V

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/u$c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    sget-object v1, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lf/i/a/a/h1/u$c;->c:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(ILf/i/a/a/u0$b;Z)Lf/i/a/a/u0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    invoke-virtual {v0, p1, p2, p3}, Lf/i/a/a/u0;->g(ILf/i/a/a/u0$b;Z)Lf/i/a/a/u0$b;

    .line 2
    iget-object p1, p2, Lf/i/a/a/u0$b;->b:Ljava/lang/Object;

    iget-object p3, p0, Lf/i/a/a/h1/u$c;->c:Ljava/lang/Object;

    invoke-static {p1, p3}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    iput-object p1, p2, Lf/i/a/a/u0$b;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public m(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    invoke-virtual {v0, p1}, Lf/i/a/a/u0;->m(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u$c;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method
