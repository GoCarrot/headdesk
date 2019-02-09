.class public final Lio/teak/sdk/wrapper/air/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lio/teak/sdk/e/c;

    sget-object v1, Lio/teak/sdk/Teak;->Version:Ljava/util/Map;

    invoke-direct {v0, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    .line 30
    :try_start_0
    invoke-virtual {v0}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
