.class public Lf/i/a/a/b1/x/b0$a;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/x/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/x/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/m1/t;

.field public final synthetic b:Lf/i/a/a/b1/x/b0;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/x/b0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/x/b0$a;->b:Lf/i/a/a/b1/x/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lf/i/a/a/m1/t;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lf/i/a/a/m1/t;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0$a;->a:Lf/i/a/a/m1/t;

    return-void
.end method


# virtual methods
.method public b(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 0

    return-void
.end method

.method public c(Lf/i/a/a/m1/u;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p1, v0}, Lf/i/a/a/m1/u;->B(I)V

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    iget-object v4, p0, Lf/i/a/a/b1/x/b0$a;->a:Lf/i/a/a/m1/t;

    invoke-virtual {p1, v4, v1}, Lf/i/a/a/m1/u;->b(Lf/i/a/a/m1/t;I)V

    .line 5
    iget-object v4, p0, Lf/i/a/a/b1/x/b0$a;->a:Lf/i/a/a/m1/t;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lf/i/a/a/m1/t;->f(I)I

    move-result v4

    .line 6
    iget-object v5, p0, Lf/i/a/a/b1/x/b0$a;->a:Lf/i/a/a/m1/t;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lf/i/a/a/m1/t;->l(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 7
    iget-object v4, p0, Lf/i/a/a/b1/x/b0$a;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v4, v5}, Lf/i/a/a/m1/t;->l(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Lf/i/a/a/b1/x/b0$a;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v4, v5}, Lf/i/a/a/m1/t;->f(I)I

    move-result v4

    .line 9
    iget-object v5, p0, Lf/i/a/a/b1/x/b0$a;->b:Lf/i/a/a/b1/x/b0;

    .line 10
    iget-object v6, v5, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    .line 11
    new-instance v7, Lf/i/a/a/b1/x/w;

    new-instance v8, Lf/i/a/a/b1/x/b0$b;

    invoke-direct {v8, v5, v4}, Lf/i/a/a/b1/x/b0$b;-><init>(Lf/i/a/a/b1/x/b0;I)V

    invoke-direct {v7, v8}, Lf/i/a/a/b1/x/w;-><init>(Lf/i/a/a/b1/x/v;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v4, p0, Lf/i/a/a/b1/x/b0$a;->b:Lf/i/a/a/b1/x/b0;

    .line 13
    iget v5, v4, Lf/i/a/a/b1/x/b0;->l:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lf/i/a/a/b1/x/b0;->l:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lf/i/a/a/b1/x/b0$a;->b:Lf/i/a/a/b1/x/b0;

    .line 15
    iget v0, p1, Lf/i/a/a/b1/x/b0;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 16
    iget-object p1, p1, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method
