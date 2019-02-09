.class public final Lio/teak/sdk/wrapper/air/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p2, "argv"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v0, 0x0

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    .line 17
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/a;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/teak/sdk/e/a;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lio/teak/sdk/e/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lio/teak/sdk/e/a;->a()I

    move-result v0

    const-class v3, [Ljava/lang/String;

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/teak/sdk/Teak;->identifyUser(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 25
    :catch_1
    move-exception v0

    .line 26
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
