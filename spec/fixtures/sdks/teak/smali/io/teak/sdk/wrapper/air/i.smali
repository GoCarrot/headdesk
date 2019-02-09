.class public final Lio/teak/sdk/wrapper/air/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p2, "argv"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 18
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 19
    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 21
    new-instance v3, Lio/teak/sdk/wrapper/air/i$1;

    invoke-direct {v3, p0, v0}, Lio/teak/sdk/wrapper/air/i$1;-><init>(Lio/teak/sdk/wrapper/air/i;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lio/teak/sdk/Teak;->registerDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
