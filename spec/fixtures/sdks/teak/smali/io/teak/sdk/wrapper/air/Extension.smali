.class public Lio/teak/sdk/wrapper/air/Extension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/fre/FREExtension;
.implements Lio/teak/sdk/Unobfuscable;


# static fields
.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lio/teak/sdk/wrapper/air/ExtensionContext;

    invoke-direct {v0}, Lio/teak/sdk/wrapper/air/ExtensionContext;-><init>()V

    .line 14
    sput-object v0, Lio/teak/sdk/wrapper/air/Extension;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lio/teak/sdk/wrapper/air/Extension;->context:Lcom/adobe/fre/FREContext;

    .line 20
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
