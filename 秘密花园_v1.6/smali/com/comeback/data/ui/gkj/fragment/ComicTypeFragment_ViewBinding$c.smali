.class public Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$c;
.super Ld/c/b;
.source "ComicTypeFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$c;->c:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$c;->c:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/gkj/ScreenActivity;->A(Landroid/content/Context;)V

    return-void
.end method
