.class public Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder_ViewBinding$a;
.super Ld/c/b;
.source "ActorAdapter$HomeListHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/nana/adapter/ActorAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder;->ivCover:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/ActorAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/nana/ActorDetailActivity;->t(Landroid/content/Context;Landroid/widget/ImageView;Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;)V

    return-void
.end method
