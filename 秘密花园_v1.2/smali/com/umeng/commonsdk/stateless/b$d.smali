.class public Lcom/umeng/commonsdk/stateless/b$d;
.super Ljava/lang/Object;
.source "UMSLEnvelope.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/stateless/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/b$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/stateless/b$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/stateless/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/stateless/b$c;-><init>(Lcom/umeng/commonsdk/stateless/b$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/commonsdk/proguard/aq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b$d;->a()Lcom/umeng/commonsdk/stateless/b$c;

    move-result-object v0

    return-object v0
.end method
