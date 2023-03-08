.class public Lcom/comeback/data/ui/gkj/CgReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "CgReadActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

.field public c:Lcom/comeback/data/ui/gkj/adapter/PicAdapter;

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/gkj/CgReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgwFCw=="

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

    const-string v0, "XgwFCw=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/CgReadActivity;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c005e

    return v0
.end method

.method public e()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/CgReadActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/CgReadActivity;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/CgReadActivity;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0u3ygdPw36TFj6PTl9b5"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/gkj/CgReadActivity;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lf/e/a/j/n/p/e;->b()Lf/e/a/j/n/p/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lf/e/a/j/n/p/c;->m(ILjava/lang/String;)Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/comeback/data/ui/gkj/CgReadActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/gkj/CgReadActivity$a;-><init>(Lcom/comeback/data/ui/gkj/CgReadActivity;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
