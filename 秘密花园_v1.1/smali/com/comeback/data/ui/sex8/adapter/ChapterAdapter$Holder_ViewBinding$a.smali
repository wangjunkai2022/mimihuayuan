.class public Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ChapterAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder;->b:Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->getRadio_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->o(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
