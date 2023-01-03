.class public Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ChapterAdapter$HomeListHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->b:Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMlUASU1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090317

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFMlUASU0="

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag1:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding$a;-><init>(Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFMlUASk1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090318

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFMlUASk0="

    .line 9
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag2:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v1, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding$b;-><init>(Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFMlUAS01DClkGQwkOB1FcF0YTCBYpDwJUCUQ="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090319

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFMlUAS00="

    .line 13
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag3:Landroid/widget/TextView;

    .line 14
    iput-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->e:Landroid/view/View;

    .line 15
    new-instance v1, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding$c;-><init>(Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFMlUATE1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09031a

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "UQsGCA9THkcFMlUATE0="

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag4:Landroid/widget/TextView;

    .line 18
    iput-object p2, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->f:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding$d;-><init>(Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->b:Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->b:Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag1:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag2:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag3:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag4:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->c:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->e:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
