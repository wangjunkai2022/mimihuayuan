.class public Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ComicDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/slf/ComicDetailActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/ComicDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    const-string v0, "UQsGCA9THkcFNUAGCk0="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090316

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvStar:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFLlsTXw=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c9

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvHot:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMlUASU0="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090321

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag1:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMlUASk0="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090322

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag2:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMlUAS00="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090323

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag3:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMlUATE0="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090324

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag4:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFL1oTCgVE"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ce

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvIntro:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFKUYDHRhES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902f3

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFKUYDHRhE"

    .line 11
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvOrder:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;Lcom/comeback/data/ui/slf/ComicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFNUAGDA9E"

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFM0QDGR4GTA=="

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090337

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvUpdate:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNFERHRgQDhBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090305

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFNFERHRgQDhA="

    .line 17
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvReverse:Landroid/widget/TextView;

    .line 18
    iput-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 19
    new-instance v1, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;Lcom/comeback/data/ui/slf/ComicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 20
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKl0MHU0="

    .line 21
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901ff

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvLike:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THloFJVsRHRhE"

    .line 22
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->ivCover:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 23
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkEFKl0UDFhE"

    .line 24
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090202

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THl8fI0wXHQQHTA=="

    .line 25
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09012c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->llExpend:Landroid/widget/LinearLayout;

    const-string v0, "WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="

    .line 26
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0902bf

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->e:Landroid/view/View;

    .line 28
    new-instance v2, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;Lcom/comeback/data/ui/slf/ComicDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902c0

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->f:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding$d;-><init>(Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;Lcom/comeback/data/ui/slf/ComicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060069

    .line 33
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->kmColorAccent:I

    const v0, 0x7f06001f

    .line 34
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/comeback/data/ui/slf/ComicDetailActivity;->primary_text:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/slf/ComicDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvStar:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvHot:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag1:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag2:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag3:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag4:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvIntro:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvOrder:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvUpdate:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvReverse:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvLike:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->ivCover:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iput-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->llExpend:Landroid/widget/LinearLayout;

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->e:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
