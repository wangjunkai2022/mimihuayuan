.class public Lf/c/a/i/f;
.super Ljava/lang/Object;
.source "WheelOptions.java"

# interfaces
.implements Lf/f/c/b;


# instance fields
.field public final synthetic a:Lf/c/a/i/h;


# direct methods
.method public constructor <init>(Lf/c/a/i/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/c/a/i/f;->a:Lf/c/a/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/c/a/i/f;->a:Lf/c/a/i/h;

    .line 2
    iget-object v1, v0, Lf/c/a/i/h;->e:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object p1, v0, Lf/c/a/i/h;->k:Lf/c/a/h/c;

    if-eqz p1, :cond_4

    .line 4
    iget-object v0, v0, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    .line 5
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0, v2, v2}, Lf/c/a/h/c;->a(III)V

    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v1, v0, Lf/c/a/i/h;->h:Z

    if-nez v1, :cond_1

    .line 7
    iget-object v0, v0, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    .line 8
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    .line 9
    iget-object v1, p0, Lf/c/a/i/f;->a:Lf/c/a/i/h;

    .line 10
    iget-object v1, v1, Lf/c/a/i/h;->e:Ljava/util/List;

    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lf/c/a/i/f;->a:Lf/c/a/i/h;

    .line 12
    iget-object v0, v0, Lf/c/a/i/h;->e:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 14
    :cond_2
    :goto_0
    iget-object v1, p0, Lf/c/a/i/f;->a:Lf/c/a/i/h;

    .line 15
    iget-object v3, v1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    .line 16
    new-instance v4, Lf/c/a/f/a;

    .line 17
    iget-object v1, v1, Lf/c/a/i/h;->e:Ljava/util/List;

    .line 18
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v4, v1}, Lf/c/a/f/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lf/f/a/a;)V

    .line 19
    iget-object v1, p0, Lf/c/a/i/f;->a:Lf/c/a/i/h;

    .line 20
    iget-object v1, v1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    .line 21
    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 22
    iget-object v1, p0, Lf/c/a/i/f;->a:Lf/c/a/i/h;

    .line 23
    iget-object v3, v1, Lf/c/a/i/h;->f:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 24
    iget-object p1, v1, Lf/c/a/i/h;->j:Lf/f/c/b;

    .line 25
    invoke-interface {p1, v0}, Lf/f/c/b;->a(I)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v1, v1, Lf/c/a/i/h;->k:Lf/c/a/h/c;

    if-eqz v1, :cond_4

    .line 27
    invoke-interface {v1, p1, v0, v2}, Lf/c/a/h/c;->a(III)V

    :cond_4
    :goto_1
    return-void
.end method
