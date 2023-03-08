.class public Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$c;
.super Ljava/lang/Object;
.source "VideoSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$c;->a:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$c;->a:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    .line 3
    iget-object p2, p1, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->e:Lcom/comeback/data/ui/movieCloud/bean/XXList;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->z(Z)V

    :cond_0
    return-void
.end method
