.class public final enum Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

.field public static final enum HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

.field public static final enum LOW:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

.field public static final enum NORMAL:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->NORMAL:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    .line 2
    new-instance v0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    .line 3
    new-instance v0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    const-string v1, "LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->LOW:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    .line 4
    sget-object v5, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->NORMAL:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->$VALUES:[Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    return-object p0
.end method

.method public static values()[Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->$VALUES:[Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    invoke-virtual {v0}, [Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    return-object v0
.end method
