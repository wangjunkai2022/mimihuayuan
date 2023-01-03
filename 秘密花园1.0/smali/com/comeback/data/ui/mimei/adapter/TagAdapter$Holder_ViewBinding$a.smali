.class public Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "TagAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder;->a:Lcom/comeback/data/ui/mimei/adapter/TagAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/mimei/adapter/TagAdapter;->d:Lcom/comeback/data/ui/mimei/adapter/TagAdapter$a;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/TagAdapter$Holder;->b:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/comeback/data/ui/mimei/adapter/TagAdapter$a;->a(Ljava/lang/String;)V

    return-void
.end method
