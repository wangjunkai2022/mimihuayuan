.class public Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "TagAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder;->a:Lcom/comeback/data/ui/nana/adapter/TagAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/nana/adapter/TagAdapter;->d:Lcom/comeback/data/ui/nana/adapter/TagAdapter$a;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/TagAdapter$Holder;->b:Ljava/lang/String;

    check-cast v0, Lf/e/a/j/h0/l/c;

    .line 5
    iget-object v0, v0, Lf/e/a/j/h0/l/c;->a:Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comeback/data/ui/nana/SearchResultActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
