.class public final Lf/i/b/c0/a0/h;
.super Lf/i/b/z;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/b/z<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lf/i/b/a0;


# instance fields
.field public final a:Lf/i/b/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/b/c0/a0/h$a;

    invoke-direct {v0}, Lf/i/b/c0/a0/h$a;-><init>()V

    sput-object v0, Lf/i/b/c0/a0/h;->b:Lf/i/b/a0;

    return-void
.end method

.method public constructor <init>(Lf/i/b/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/b/c0/a0/h;->a:Lf/i/b/j;

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/i/b/e0/a;->R()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lf/i/b/e0/a;->L()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lf/i/b/e0/a;->M()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {p1}, Lf/i/b/e0/a;->T()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance v0, Lf/i/b/c0/s;

    invoke-direct {v0}, Lf/i/b/c0/s;-><init>()V

    .line 9
    invoke-virtual {p1}, Lf/i/b/e0/a;->e()V

    .line 10
    :goto_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p1}, Lf/i/b/e0/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lf/i/b/c0/a0/h;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/i/b/c0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p1}, Lf/i/b/e0/a;->F()V

    return-object v0

    .line 13
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, Lf/i/b/e0/a;->d()V

    .line 15
    :goto_1
    invoke-virtual {p1}, Lf/i/b/e0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Lf/i/b/c0/a0/h;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p1}, Lf/i/b/e0/a;->E()V

    return-object v0
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lf/i/b/e0/c;->I()Lf/i/b/e0/c;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/a0/h;->a:Lf/i/b/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 3
    new-instance v2, Lf/i/b/d0/a;

    invoke-direct {v2, v1}, Lf/i/b/d0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 4
    invoke-virtual {v0, v2}, Lf/i/b/j;->f(Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lf/i/b/c0/a0/h;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lf/i/b/e0/c;->f()Lf/i/b/e0/c;

    .line 7
    invoke-virtual {p1}, Lf/i/b/e0/c;->F()Lf/i/b/e0/c;

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0, p1, p2}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
