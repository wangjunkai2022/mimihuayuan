.class public Lcom/comeback/data/ui/slf/NovelReadActivity_ViewBinding$a;
.super Ld/c/b;
.source "NovelReadActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/NovelReadActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/slf/NovelReadActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/slf/NovelReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/NovelReadActivity_ViewBinding;Lcom/comeback/data/ui/slf/NovelReadActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/slf/NovelReadActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/slf/NovelReadActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/slf/NovelReadActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/slf/NovelReadActivity;

    .line 2
    iget-boolean v0, p1, Lcom/comeback/data/ui/slf/NovelReadActivity;->b:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/NovelReadActivity;->m()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/comeback/data/ui/slf/NovelReadActivity;->b:Z

    .line 5
    iget-object v1, p1, Lcom/comeback/data/ui/slf/NovelReadActivity;->llFolder:Landroid/widget/LinearLayout;

    const-string v2, "QxACChgfWEcaCVo/"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object p1, p1, Lcom/comeback/data/ui/slf/NovelReadActivity;->llFolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x0

    aput p1, v3, v0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method
