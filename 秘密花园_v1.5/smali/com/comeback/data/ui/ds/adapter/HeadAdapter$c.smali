.class public Lcom/comeback/data/ui/ds/adapter/HeadAdapter$c;
.super Ljava/lang/Object;
.source "HeadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/adapter/HeadAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/adapter/HeadAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/adapter/HeadAdapter$c;->a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "YSszRI/Lqtb/3A=="

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/ds/adapter/HeadAdapter$c;->a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/ds/adapter/HeadAdapter;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "QQsT"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/comeback/data/ui/ds/TagActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
