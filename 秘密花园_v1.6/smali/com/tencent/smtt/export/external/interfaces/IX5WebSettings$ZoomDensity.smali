.class public final enum Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "IX5WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

.field public static final enum CLOSE:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

.field public static final enum FAR:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

.field public static final enum MEDIUM:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    const-string v1, "FAR"

    const/4 v2, 0x0

    const/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->FAR:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    .line 2
    new-instance v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->MEDIUM:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    .line 3
    new-instance v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    const-string v1, "CLOSE"

    const/4 v4, 0x2

    const/16 v5, 0x4b

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->CLOSE:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    .line 4
    sget-object v5, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->FAR:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->MEDIUM:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->$VALUES:[Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    return-object p0
.end method

.method public static values()[Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->$VALUES:[Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    invoke-virtual {v0}, [Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    return-object v0
.end method
