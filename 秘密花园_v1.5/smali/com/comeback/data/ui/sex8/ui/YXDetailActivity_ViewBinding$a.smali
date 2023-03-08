.class public Lcom/comeback/data/ui/sex8/ui/YXDetailActivity_ViewBinding$a;
.super Ld/c/b;
.source "YXDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/sex8/ui/YXDetailActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/ui/YXDetailActivity_ViewBinding;Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getHost()Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->t(Landroid/content/Context;Lcom/comeback/data/ui/sex8/bean/YXHostBean;)V

    :cond_0
    return-void
.end method
