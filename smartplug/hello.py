import asyncio
from kasa import SmartPlug

# https://python-kasa.readthedocs.io/en/latest/index.html

async def main():
    p=SmartPlug("192.168.1.66")
    await p.update()
    print(p.alias)

    await p.turn_on()
    # await p.turn_off()

if __name__ == "__main__":
    asyncio.run(main())

