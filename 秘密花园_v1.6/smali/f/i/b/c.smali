.class public abstract enum Lf/i/b/c;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"

# interfaces
.implements Lf/i/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/i/b/c;",
        ">;",
        "Lf/i/b/d;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/i/b/c;

.field public static final enum b:Lf/i/b/c;

.field public static final enum c:Lf/i/b/c;

.field public static final enum d:Lf/i/b/c;

.field public static final enum e:Lf/i/b/c;

.field public static final enum f:Lf/i/b/c;

.field public static final synthetic g:[Lf/i/b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lf/i/b/c$a;

    const-string v1, "IDENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/i/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/i/b/c;->a:Lf/i/b/c;

    .line 2
    new-instance v0, Lf/i/b/c$b;

    const-string v1, "UPPER_CAMEL_CASE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/i/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/i/b/c;->b:Lf/i/b/c;

    .line 3
    new-instance v0, Lf/i/b/c$c;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lf/i/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/i/b/c;->c:Lf/i/b/c;

    .line 4
    new-instance v0, Lf/i/b/c$d;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lf/i/b/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/i/b/c;->d:Lf/i/b/c;

    .line 5
    new-instance v0, Lf/i/b/c$e;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lf/i/b/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/i/b/c;->e:Lf/i/b/c;

    .line 6
    new-instance v0, Lf/i/b/c$f;

    const-string v1, "LOWER_CASE_WITH_DOTS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lf/i/b/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/i/b/c;->f:Lf/i/b/c;

    const/4 v1, 0x6

    new-array v1, v1, [Lf/i/b/c;

    .line 7
    sget-object v8, Lf/i/b/c;->a:Lf/i/b/c;

    aput-object v8, v1, v2

    sget-object v2, Lf/i/b/c;->b:Lf/i/b/c;

    aput-object v2, v1, v3

    sget-object v2, Lf/i/b/c;->c:Lf/i/b/c;

    aput-object v2, v1, v4

    sget-object v2, Lf/i/b/c;->d:Lf/i/b/c;

    aput-object v2, v1, v5

    sget-object v2, Lf/i/b/c;->e:Lf/i/b/c;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lf/i/b/c;->g:[Lf/i/b/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILf/i/b/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_1

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    .line 12
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lf/i/b/c;
    .locals 1

    .line 1
    const-class v0, Lf/i/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/i/b/c;

    return-object p0
.end method

.method public static values()[Lf/i/b/c;
    .locals 1

    .line 1
    sget-object v0, Lf/i/b/c;->g:[Lf/i/b/c;

    invoke-virtual {v0}, [Lf/i/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/b/c;

    return-object v0
.end method
