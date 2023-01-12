.class public Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment_ViewBinding$a;
.super Ld/c/b;
.source "AnchorCardFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment_ViewBinding;Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;->g:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;->n(Landroid/content/Context;Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;)V

    return-void
.end method
