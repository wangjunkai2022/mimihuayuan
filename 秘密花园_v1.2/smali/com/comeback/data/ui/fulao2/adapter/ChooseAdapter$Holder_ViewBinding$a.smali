.class public Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ChooseAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    sget v1, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->e:I

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->b:Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->a:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;

    sget v1, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->e:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    sput v0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->e:I

    .line 6
    iget-object v0, p1, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->a:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;

    .line 7
    iget-object v0, v0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->d:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$a;

    .line 8
    check-cast v0, Lcom/comeback/data/ui/fulao2/PlayActivity;

    .line 9
    iget-object v1, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/fulao2/PlayActivity;->l(Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->a:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
