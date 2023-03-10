.class public Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "SearchHintAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/aimeiju/adapter/SearchHintAdapter$Holder;->a:Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method
