.class public Lf/c/a/i/g;
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
    iput-object p1, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 2
    iget-object v1, v0, Lf/c/a/i/h;->f:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3
    iget-object v0, v0, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    .line 4
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    .line 5
    iget-object v1, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 6
    iget-object v1, v1, Lf/c/a/i/h;->f:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 8
    iget-object v0, v0, Lf/c/a/i/h;->f:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 10
    :cond_0
    iget-object v1, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 11
    iget-object v1, v1, Lf/c/a/i/h;->e:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 13
    iget-object p1, p1, Lf/c/a/i/h;->e:Ljava/util/List;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 15
    :cond_1
    iget-object v1, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 16
    iget-boolean v3, v1, Lf/c/a/i/h;->h:Z

    if-nez v3, :cond_3

    .line 17
    iget-object v1, v1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    .line 18
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 19
    iget-object v2, v2, Lf/c/a/i/h;->f:Ljava/util/List;

    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 21
    iget-object v1, v1, Lf/c/a/i/h;->f:Ljava/util/List;

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 23
    iget-object v0, v0, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    .line 24
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    :goto_0
    move v2, v0

    .line 25
    :cond_3
    iget-object v0, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 26
    iget-object v1, v0, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    .line 27
    new-instance v3, Lf/c/a/f/a;

    .line 28
    iget-object v4, v0, Lf/c/a/i/h;->f:Ljava/util/List;

    .line 29
    iget-object v0, v0, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    .line 30
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v3, v0}, Lf/c/a/f/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lf/f/a/a;)V

    .line 31
    iget-object v0, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 32
    iget-object v0, v0, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    .line 33
    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 34
    iget-object v0, p0, Lf/c/a/i/g;->a:Lf/c/a/i/h;

    .line 35
    iget-object v1, v0, Lf/c/a/i/h;->k:Lf/c/a/h/c;

    if-eqz v1, :cond_5

    .line 36
    iget-object v0, v0, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    .line 37
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-interface {v1, v0, p1, v2}, Lf/c/a/h/c;->a(III)V

    goto :goto_1

    .line 38
    :cond_4
    iget-object v1, v0, Lf/c/a/i/h;->k:Lf/c/a/h/c;

    if-eqz v1, :cond_5

    .line 39
    iget-object v0, v0, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    .line 40
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-interface {v1, v0, p1, v2}, Lf/c/a/h/c;->a(III)V

    :cond_5
    :goto_1
    return-void
.end method
