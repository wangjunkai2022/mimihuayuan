.class public Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$a;,
        Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lf/a/a/a/a;

.field public b:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;->a:Lf/a/a/a/a;

    .line 3
    iput-object p4, p0, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;->b:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;->a:Lf/a/a/a/a;

    return-object v0
.end method

.method public synthetic d(Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x3

    if-ne p3, p2, :cond_1

    .line 1
    iget-object p1, p1, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;->b:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$a;

    check-cast p2, Lf/e/a/j/j0/a;

    invoke-virtual {p2, p1}, Lf/e/a/j/j0/a;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;

    .line 2
    iget-object p2, p1, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;->a:Landroid/widget/EditText;

    new-instance v0, Lf/e/a/j/j0/e/a;

    invoke-direct {v0, p0, p1}, Lf/e/a/j/j0/e/a;-><init>(Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01fb

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;-><init>(Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;Landroid/view/View;)V

    return-object p2
.end method
