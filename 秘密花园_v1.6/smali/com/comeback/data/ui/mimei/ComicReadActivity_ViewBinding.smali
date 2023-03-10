.class public Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ComicReadActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/mimei/ComicReadActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/ComicReadActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->b:Lcom/comeback/data/ui/mimei/ComicReadActivity;

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/mimei/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkcFNlUAHU0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f4

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/mimei/ComicReadActivity;->tvPage:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/mimei/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNkYCX0oCBVNCDgEfG1ZXU0FbCS4DBhx0DgoHABZdFA=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902fd

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFNkYCXw=="

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v1, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;Lcom/comeback/data/ui/mimei/ComicReadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFJVsLFA8AHxBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902a8

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFJVsLFA8AHxA="

    .line 11
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/mimei/ComicReadActivity;->tvCollect:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;Lcom/comeback/data/ui/mimei/ComicReadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFIFsLHA8RTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902c1

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFIFsLHA8RTA=="

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v1, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;Lcom/comeback/data/ui/mimei/ComicReadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFKFEfDE1DClkGQwkOB1FcF0YTCBY8Cg5AIQ8NCBhcV1Q="

    .line 18
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902eb

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFKFEfDE0="

    .line 19
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v1, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding$d;-><init>(Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;Lcom/comeback/data/ui/mimei/ComicReadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl8fJFsTDAUOTA=="

    .line 22
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090127

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/mimei/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    const-string v0, "UQsGCA9THkcFMl0TFA9RTA=="

    .line 23
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090329

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkEFJVwGCB4GGRA="

    .line 24
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f9

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/mimei/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THl8fIFsLHA8RTA=="

    .line 25
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09012d

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/comeback/data/ui/mimei/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->b:Lcom/comeback/data/ui/mimei/ComicReadActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->b:Lcom/comeback/data/ui/mimei/ComicReadActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->tvPage:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->tvCollect:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->e:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/comeback/data/ui/mimei/ComicReadActivity_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
