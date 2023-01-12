.class public Lcom/comeback/data/ui/xiami/NovelReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "NovelReadActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDetail:Landroid/widget/TextView;
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

.field public tvType:Landroid/widget/TextView;
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

.method public static l(Landroid/content/Context;Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/xiami/NovelReadActivity;

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

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    iput-object p1, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00d0

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/j/q0/f/d;->a()Lf/e/a/j/q0/f/b;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "UQsAEAIcV3oX"

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;->getFictionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VAoCCgUWVQ=="

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QAcBOwQVX1oQD1UL"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0, v1}, Lf/e/a/j/q0/f/b;->d(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/comeback/data/ui/xiami/NovelReadActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/xiami/NovelReadActivity$a;-><init>(Lcom/comeback/data/ui/xiami/NovelReadActivity;)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->tvType:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "09//jOv21o/p"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->tvCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0NPYgfX41o/p"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;->getCategoryTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0fXVjfzH1o/p"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;->getAddTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lc/a/a/b/g/h;->O0(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
