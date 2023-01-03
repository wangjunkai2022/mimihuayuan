.class public Lcom/comeback/data/ui/fulao2/FuLao2LaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "FuLao2LaunchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0132

    return v0
.end method

.method public e()V
    .locals 5

    const-string v0, "AAsaHQAUfUc+CwcvMSYhOHYnO1AfNQ1lBgwFARI+KFx2FyoKODBJXDAyfB8OAQICWgosAzE+fX87I2UGMQ0vWXQKBxwbCUgYMCF1AR0GSD9uCQEuGVxdexRXZgszIiUvXTAlCFhYdAowNn1SPD4SBUcHKwIPFU5LFhx2XjYOSCkCCyYzIwoMXzs+ABI/LTlYQgomTz8pbkAUIloSUz4vPAYBGy8DOkB/OSpFUSscJlJTL1opP0taVwAwB1A1GloFTw1IS11cbAoBIUY0GhwZOVQSL1UlAFRYPy9fLAlBMSECClQGLkpMADkiXwMVGAInQE0tFRgAUWVFKh8mFQJXWl8sJj4REX9ZEApfNwsnMCgDMBcBOjFUcjENGzRJPlUYRgQ6DEAGFkE/LXVa"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BlpTUFJDCAtAVw=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lc/a/a/b/g/h;->J(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lc/a/a/b/g/h;->e0()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {}, Lc/a/a/b/g/h;->d0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-static {v2, v4, v0}, Lc/a/a/b/g/h;->I([B[BLjava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {}, Lc/a/a/b/g/h;->e0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {}, Lc/a/a/b/g/h;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v2, v1}, Lc/a/a/b/g/h;->I([B[BLjava/lang/String;)Ljava/lang/String;

    .line 7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "URErHgwYfEAVBAUDAhsEA3ABCTQmMWlSFDMHHwAPKiNOOywVDipNUQMTbi8dWlNYfS4QDgAYe1gSMmVRHiM1Bw9RSCkiPUoFShNhNkAaEgJcUDUPGTpORyEvWxM6JiIJXxsXJ1wZYHwQJFcxFgJbPwULNSMTQFJ+PklBKjAeAChjNQ4CWkZdXDcSXA0hHzlcYVs3EwwrbUBFBX8lKBAsGFs0ETUuCVNBBzEEFwgNOgJ4TQcBHxxSchxVVSIrKwUlDjQnHVomFmo+VkYUNwMhBU0YWiUGCUMKQVJgAAkrMx4YEVUQI0IAB0EfdwEhOiYBeygKHiNFVhw/NWQyPVkmARwrDSI7OlhyRiJfEEkBBSJgUTJPIDJfXxYwQCUPOS89VAssKT85CUsrJ0da"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlNRUllBCgZC"

    .line 9
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/a/a/b/g/h;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "UwYHAA8XXQk="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "A1VbXFJDCwZG"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UQhIHlogAVkmF0M/M1obU1MuBDMoS3xDSwVTHxZTNilBLi0iBTd8WycDTTNPGytfRBgPUgo8FnsBKmFTEyUTHGAOASsxEUtpGS8AXhEPFB5ZWiwMWx9sfiY8WgxTIC8uchoRIiQ9bUUeF2EkSilIQA83D1ciEQldXA12DxEdCS4BL1U1QARPfCkhcykXJyA+VAk7ByUnEnEqU0c3K0EvOwcULigKME1FFiRlPxo8GgIAJxZQLkB1Rj8EBCo1WAEdfwwQLSQeWlA5N3ErIARaWkJWUgkDB3J6PTZtMi4bK19aLxMLJgJodT8eYAktRQ9ERQQXEAUXaXRCUEESIQgFM2A7VhUmGmwAGxdVECsiKShTKDpVE0FcRyA2RzcrDgAZAw8IEj0xYHgADnVa"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-void
.end method
