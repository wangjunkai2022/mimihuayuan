.class public Lcom/comeback/data/ui/jhlf/InfoActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "InfoActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

.field public c:Ljava/lang/StringBuffer;

.field public d:Z

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAddress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAge:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvArea:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvBeauty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPhone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvQq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvServer:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvWechat:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->d:Z

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/jhlf/InfoActivity;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "0e3zg8/J"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0f7Pjcni0LLgj6jnkMzij4/pi9nWlpe6m8WxhPjm"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "1OLuguL+0bDOgonYn/7LYdLE4YL1792L+I6J2pzS7o+N5IvL3JuGqJTynIHw3YTVk4ri8IzAgtTdx9P3/o/y8w=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "09nGgfv93LX+gaDP"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf/e/a/j/w/f;

    invoke-direct {v2, p0}, Lf/e/a/j/w/f;-><init>(Lcom/comeback/data/ui/jhlf/InfoActivity;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "0MnogebA3J36jpfi"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf/e/a/j/w/e;

    invoke-direct {v2, p0}, Lf/e/a/j/w/e;-><init>(Lcom/comeback/data/ui/jhlf/InfoActivity;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static n(Landroid/content/Context;Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/jhlf/InfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "XgY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "UwMXBQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c004b

    return v0
.end method

.method public e()V
    .locals 6

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    sget-object v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->c:Ljava/lang/StringBuffer;

    .line 4
    sget-object v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    .line 5
    invoke-virtual {v1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->isMust()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/a/a/b/g/h;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iput-boolean v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->d:Z

    .line 7
    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "1OLi"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getPublished_at()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvArea:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0evjgdrt3K/Dg7jdl9b5"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvAge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0tLsgczj3IrHj4rjl9b5"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getAge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvBeauty:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0tLsgczj0JHvg7Tbl9b5"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getFaceLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0dTrjN/K34PHg43Ul9b5"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvServer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0f7ugeHS0JLKga/Jl9b5"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getServerList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-boolean v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->d:Z

    const-string v1, "0v7Tgfbz1o/p"

    const-string v2, "0PbWjMTu1o/p"

    const-string v3, "0tzNgNTS1o/p"

    const-string v4, "ZjOM2PE="

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvQq:Landroid/widget/TextView;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/comeback/data/ui/jhlf/InfoActivity;->m(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvWechat:Landroid/widget/TextView;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/comeback/data/ui/jhlf/InfoActivity;->m(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvPhone:Landroid/widget/TextView;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/comeback/data/ui/jhlf/InfoActivity;->m(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvAddress:Landroid/widget/TextView;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/jhlf/InfoActivity;->m(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvQq:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v4}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getQq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvWechat:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v3}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getWechat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvPhone:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvAddress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_1
    new-instance v0, Lcom/comeback/data/ui/fengliu/PicAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/comeback/data/ui/fengliu/PicAdapter;-><init>(Landroid/content/Context;Z)V

    .line 27
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getAllCover()Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 31
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->tvIntro:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/InfoActivity;->b:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getDescd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "0ODagezI0ZTQj6DmnNXCjbbN"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "FAQFUFtLCA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x3

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance p2, Lcom/comeback/data/ui/jhlf/InfoActivity$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/jhlf/InfoActivity$a;-><init>(Lcom/comeback/data/ui/jhlf/InfoActivity;)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
